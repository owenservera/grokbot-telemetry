# sandbox_telemetry_parse — 2026-11-27 09:51:25 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=355234 lines=792
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 784 |
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
| `chromeBrowserPssKb` | {'int': 784} |
| `chromeGpuPssKb` | {'int': 784} |
| `chromeOtherPssKb` | {'int': 784} |
| `chromeProcesses` | {'int': 784} |
| `chromeProfiles` | {'int': 784} |
| `chromeRendererMaxPssKb` | {'int': 784} |
| `chromeRendererPssKb` | {'int': 784} |
| `chromeRenderers` | {'int': 784} |
| `chromeTabs` | {'int': 784} |
| `chromeTabsProbedProfiles` | {'int': 784} |
| `chromeUtilityPssKb` | {'int': 784} |
| `desktopPssKb` | {'int': 784} |
| `hostPssKb` | {'int': 784} |
| `kind` | {'str': 784} |
| `memAvailableKb` | {'int': 784} |
| `memTotalKb` | {'int': 784} |
| `otherPssKb` | {'int': 784} |
| `processes` | {'int': 784} |
| `pssFallbackProcesses` | {'int': 784} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
