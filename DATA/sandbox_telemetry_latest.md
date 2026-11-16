# sandbox_telemetry_parse — 2026-11-16 16:44:03 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=45335 lines=106
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 99 |
| `boot_stage` | 3 |
| `egress_tunnel` | 3 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

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
| `chromeBrowserPssKb` | {'int': 99} |
| `chromeGpuPssKb` | {'int': 99} |
| `chromeOtherPssKb` | {'int': 99} |
| `chromeProcesses` | {'int': 99} |
| `chromeProfiles` | {'int': 99} |
| `chromeRendererMaxPssKb` | {'int': 99} |
| `chromeRendererPssKb` | {'int': 99} |
| `chromeRenderers` | {'int': 99} |
| `chromeTabs` | {'int': 99} |
| `chromeTabsProbedProfiles` | {'int': 99} |
| `chromeUtilityPssKb` | {'int': 99} |
| `desktopPssKb` | {'int': 99} |
| `hostPssKb` | {'int': 99} |
| `kind` | {'str': 99} |
| `memAvailableKb` | {'int': 99} |
| `memTotalKb` | {'int': 99} |
| `otherPssKb` | {'int': 99} |
| `processes` | {'int': 99} |
| `pssFallbackProcesses` | {'int': 99} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
