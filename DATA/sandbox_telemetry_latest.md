# sandbox_telemetry_parse — 2026-11-12 21:59:27 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2344660 lines=5189
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5180 |
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
| `chromeBrowserPssKb` | {'int': 5180} |
| `chromeGpuPssKb` | {'int': 5180} |
| `chromeOtherPssKb` | {'int': 5180} |
| `chromeProcesses` | {'int': 5180} |
| `chromeProfiles` | {'int': 5180} |
| `chromeRendererMaxPssKb` | {'int': 5180} |
| `chromeRendererPssKb` | {'int': 5180} |
| `chromeRenderers` | {'int': 5180} |
| `chromeTabs` | {'int': 5180} |
| `chromeTabsProbedProfiles` | {'int': 5180} |
| `chromeUtilityPssKb` | {'int': 5180} |
| `desktopPssKb` | {'int': 5180} |
| `hostPssKb` | {'int': 5180} |
| `kind` | {'str': 5180} |
| `memAvailableKb` | {'int': 5180} |
| `memTotalKb` | {'int': 5180} |
| `otherPssKb` | {'int': 5180} |
| `processes` | {'int': 5180} |
| `pssFallbackProcesses` | {'int': 5180} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
