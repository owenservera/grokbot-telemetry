# sandbox_telemetry_parse — 2026-11-28 04:06:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=726794 lines=1613
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1605 |
| `boot_stage` | 4 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `stage` | {'str': 4} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `exitStatus` | {'int': 1} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `runtimeS` | {'int': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1605} |
| `chromeGpuPssKb` | {'int': 1605} |
| `chromeOtherPssKb` | {'int': 1605} |
| `chromeProcesses` | {'int': 1605} |
| `chromeProfiles` | {'int': 1605} |
| `chromeRendererMaxPssKb` | {'int': 1605} |
| `chromeRendererPssKb` | {'int': 1605} |
| `chromeRenderers` | {'int': 1605} |
| `chromeTabs` | {'int': 1605} |
| `chromeTabsProbedProfiles` | {'int': 1605} |
| `chromeUtilityPssKb` | {'int': 1605} |
| `desktopPssKb` | {'int': 1605} |
| `hostPssKb` | {'int': 1605} |
| `kind` | {'str': 1605} |
| `memAvailableKb` | {'int': 1605} |
| `memTotalKb` | {'int': 1605} |
| `otherPssKb` | {'int': 1605} |
| `processes` | {'int': 1605} |
| `pssFallbackProcesses` | {'int': 1605} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
