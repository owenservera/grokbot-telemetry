# sandbox_telemetry_parse — 2026-11-28 15:28:34 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=945746 lines=2097
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2089 |
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
| `chromeBrowserPssKb` | {'int': 2089} |
| `chromeGpuPssKb` | {'int': 2089} |
| `chromeOtherPssKb` | {'int': 2089} |
| `chromeProcesses` | {'int': 2089} |
| `chromeProfiles` | {'int': 2089} |
| `chromeRendererMaxPssKb` | {'int': 2089} |
| `chromeRendererPssKb` | {'int': 2089} |
| `chromeRenderers` | {'int': 2089} |
| `chromeTabs` | {'int': 2089} |
| `chromeTabsProbedProfiles` | {'int': 2089} |
| `chromeUtilityPssKb` | {'int': 2089} |
| `desktopPssKb` | {'int': 2089} |
| `hostPssKb` | {'int': 2089} |
| `kind` | {'str': 2089} |
| `memAvailableKb` | {'int': 2089} |
| `memTotalKb` | {'int': 2089} |
| `otherPssKb` | {'int': 2089} |
| `processes` | {'int': 2089} |
| `pssFallbackProcesses` | {'int': 2089} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
