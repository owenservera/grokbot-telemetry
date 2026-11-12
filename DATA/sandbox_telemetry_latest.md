# sandbox_telemetry_parse — 2026-11-12 17:20:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2240059 lines=4958
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4949 |
| `egress_tunnel` | 5 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4949} |
| `chromeGpuPssKb` | {'int': 4949} |
| `chromeOtherPssKb` | {'int': 4949} |
| `chromeProcesses` | {'int': 4949} |
| `chromeProfiles` | {'int': 4949} |
| `chromeRendererMaxPssKb` | {'int': 4949} |
| `chromeRendererPssKb` | {'int': 4949} |
| `chromeRenderers` | {'int': 4949} |
| `chromeTabs` | {'int': 4949} |
| `chromeTabsProbedProfiles` | {'int': 4949} |
| `chromeUtilityPssKb` | {'int': 4949} |
| `desktopPssKb` | {'int': 4949} |
| `hostPssKb` | {'int': 4949} |
| `kind` | {'str': 4949} |
| `memAvailableKb` | {'int': 4949} |
| `memTotalKb` | {'int': 4949} |
| `otherPssKb` | {'int': 4949} |
| `processes` | {'int': 4949} |
| `pssFallbackProcesses` | {'int': 4949} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
