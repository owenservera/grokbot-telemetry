# sandbox_telemetry_parse — 2026-11-12 19:58:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2303479 lines=5098
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5089 |
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
| `chromeBrowserPssKb` | {'int': 5089} |
| `chromeGpuPssKb` | {'int': 5089} |
| `chromeOtherPssKb` | {'int': 5089} |
| `chromeProcesses` | {'int': 5089} |
| `chromeProfiles` | {'int': 5089} |
| `chromeRendererMaxPssKb` | {'int': 5089} |
| `chromeRendererPssKb` | {'int': 5089} |
| `chromeRenderers` | {'int': 5089} |
| `chromeTabs` | {'int': 5089} |
| `chromeTabsProbedProfiles` | {'int': 5089} |
| `chromeUtilityPssKb` | {'int': 5089} |
| `desktopPssKb` | {'int': 5089} |
| `hostPssKb` | {'int': 5089} |
| `kind` | {'str': 5089} |
| `memAvailableKb` | {'int': 5089} |
| `memTotalKb` | {'int': 5089} |
| `otherPssKb` | {'int': 5089} |
| `processes` | {'int': 5089} |
| `pssFallbackProcesses` | {'int': 5089} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
