# sandbox_telemetry_parse — 2026-11-12 09:35:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2066653 lines=4575
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4566 |
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
| `chromeBrowserPssKb` | {'int': 4566} |
| `chromeGpuPssKb` | {'int': 4566} |
| `chromeOtherPssKb` | {'int': 4566} |
| `chromeProcesses` | {'int': 4566} |
| `chromeProfiles` | {'int': 4566} |
| `chromeRendererMaxPssKb` | {'int': 4566} |
| `chromeRendererPssKb` | {'int': 4566} |
| `chromeRenderers` | {'int': 4566} |
| `chromeTabs` | {'int': 4566} |
| `chromeTabsProbedProfiles` | {'int': 4566} |
| `chromeUtilityPssKb` | {'int': 4566} |
| `desktopPssKb` | {'int': 4566} |
| `hostPssKb` | {'int': 4566} |
| `kind` | {'str': 4566} |
| `memAvailableKb` | {'int': 4566} |
| `memTotalKb` | {'int': 4566} |
| `otherPssKb` | {'int': 4566} |
| `processes` | {'int': 4566} |
| `pssFallbackProcesses` | {'int': 4566} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
