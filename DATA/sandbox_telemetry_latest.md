# sandbox_telemetry_parse — 2026-11-26 22:20:04 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=110068 lines=250
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 242 |
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
| `chromeBrowserPssKb` | {'int': 242} |
| `chromeGpuPssKb` | {'int': 242} |
| `chromeOtherPssKb` | {'int': 242} |
| `chromeProcesses` | {'int': 242} |
| `chromeProfiles` | {'int': 242} |
| `chromeRendererMaxPssKb` | {'int': 242} |
| `chromeRendererPssKb` | {'int': 242} |
| `chromeRenderers` | {'int': 242} |
| `chromeTabs` | {'int': 242} |
| `chromeTabsProbedProfiles` | {'int': 242} |
| `chromeUtilityPssKb` | {'int': 242} |
| `desktopPssKb` | {'int': 242} |
| `hostPssKb` | {'int': 242} |
| `kind` | {'str': 242} |
| `memAvailableKb` | {'int': 242} |
| `memTotalKb` | {'int': 242} |
| `otherPssKb` | {'int': 242} |
| `processes` | {'int': 242} |
| `pssFallbackProcesses` | {'int': 242} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
