# sandbox_telemetry_parse — 2026-11-26 02:15:28 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=3029673 lines=6711
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 6696 |
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
| `chromeBrowserPssKb` | {'int': 6696} |
| `chromeGpuPssKb` | {'int': 6696} |
| `chromeOtherPssKb` | {'int': 6696} |
| `chromeProcesses` | {'int': 6696} |
| `chromeProfiles` | {'int': 6696} |
| `chromeRendererMaxPssKb` | {'int': 6696} |
| `chromeRendererPssKb` | {'int': 6696} |
| `chromeRenderers` | {'int': 6696} |
| `chromeTabs` | {'int': 6696} |
| `chromeTabsProbedProfiles` | {'int': 6696} |
| `chromeUtilityPssKb` | {'int': 6696} |
| `desktopPssKb` | {'int': 6696} |
| `hostPssKb` | {'int': 6696} |
| `kind` | {'str': 6696} |
| `memAvailableKb` | {'int': 6696} |
| `memTotalKb` | {'int': 6696} |
| `otherPssKb` | {'int': 6696} |
| `processes` | {'int': 6696} |
| `pssFallbackProcesses` | {'int': 6696} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
