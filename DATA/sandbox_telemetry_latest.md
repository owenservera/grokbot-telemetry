# sandbox_telemetry_parse — 2026-11-24 00:49:21 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2062225 lines=4572
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4557 |
| `egress_tunnel` | 11 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 4557} |
| `chromeGpuPssKb` | {'int': 4557} |
| `chromeOtherPssKb` | {'int': 4557} |
| `chromeProcesses` | {'int': 4557} |
| `chromeProfiles` | {'int': 4557} |
| `chromeRendererMaxPssKb` | {'int': 4557} |
| `chromeRendererPssKb` | {'int': 4557} |
| `chromeRenderers` | {'int': 4557} |
| `chromeTabs` | {'int': 4557} |
| `chromeTabsProbedProfiles` | {'int': 4557} |
| `chromeUtilityPssKb` | {'int': 4557} |
| `desktopPssKb` | {'int': 4557} |
| `hostPssKb` | {'int': 4557} |
| `kind` | {'str': 4557} |
| `memAvailableKb` | {'int': 4557} |
| `memTotalKb` | {'int': 4557} |
| `otherPssKb` | {'int': 4557} |
| `processes` | {'int': 4557} |
| `pssFallbackProcesses` | {'int': 4557} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
