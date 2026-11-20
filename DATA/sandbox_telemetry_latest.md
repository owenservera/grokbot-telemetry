# sandbox_telemetry_parse — 2026-11-20 08:37:42 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1641128 lines=3638
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 3627 |
| `egress_tunnel` | 7 |
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
| `attempt` | {'int': 7} |
| `exitStatus` | {'int': 3} |
| `kind` | {'str': 7} |
| `outcome` | {'str': 7} |
| `runtimeS` | {'int': 3} |

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
| `chromeBrowserPssKb` | {'int': 3627} |
| `chromeGpuPssKb` | {'int': 3627} |
| `chromeOtherPssKb` | {'int': 3627} |
| `chromeProcesses` | {'int': 3627} |
| `chromeProfiles` | {'int': 3627} |
| `chromeRendererMaxPssKb` | {'int': 3627} |
| `chromeRendererPssKb` | {'int': 3627} |
| `chromeRenderers` | {'int': 3627} |
| `chromeTabs` | {'int': 3627} |
| `chromeTabsProbedProfiles` | {'int': 3627} |
| `chromeUtilityPssKb` | {'int': 3627} |
| `desktopPssKb` | {'int': 3627} |
| `hostPssKb` | {'int': 3627} |
| `kind` | {'str': 3627} |
| `memAvailableKb` | {'int': 3627} |
| `memTotalKb` | {'int': 3627} |
| `otherPssKb` | {'int': 3627} |
| `processes` | {'int': 3627} |
| `pssFallbackProcesses` | {'int': 3627} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
