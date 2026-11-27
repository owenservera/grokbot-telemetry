# sandbox_telemetry_parse — 2026-11-27 08:41:47 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=328552 lines=733
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 725 |
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
| `chromeBrowserPssKb` | {'int': 725} |
| `chromeGpuPssKb` | {'int': 725} |
| `chromeOtherPssKb` | {'int': 725} |
| `chromeProcesses` | {'int': 725} |
| `chromeProfiles` | {'int': 725} |
| `chromeRendererMaxPssKb` | {'int': 725} |
| `chromeRendererPssKb` | {'int': 725} |
| `chromeRenderers` | {'int': 725} |
| `chromeTabs` | {'int': 725} |
| `chromeTabsProbedProfiles` | {'int': 725} |
| `chromeUtilityPssKb` | {'int': 725} |
| `desktopPssKb` | {'int': 725} |
| `hostPssKb` | {'int': 725} |
| `kind` | {'str': 725} |
| `memAvailableKb` | {'int': 725} |
| `memTotalKb` | {'int': 725} |
| `otherPssKb` | {'int': 725} |
| `processes` | {'int': 725} |
| `pssFallbackProcesses` | {'int': 725} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
