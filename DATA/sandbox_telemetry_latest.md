# sandbox_telemetry_parse — 2026-11-19 02:14:40 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1078327 lines=2392
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2383 |
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
| `chromeBrowserPssKb` | {'int': 2383} |
| `chromeGpuPssKb` | {'int': 2383} |
| `chromeOtherPssKb` | {'int': 2383} |
| `chromeProcesses` | {'int': 2383} |
| `chromeProfiles` | {'int': 2383} |
| `chromeRendererMaxPssKb` | {'int': 2383} |
| `chromeRendererPssKb` | {'int': 2383} |
| `chromeRenderers` | {'int': 2383} |
| `chromeTabs` | {'int': 2383} |
| `chromeTabsProbedProfiles` | {'int': 2383} |
| `chromeUtilityPssKb` | {'int': 2383} |
| `desktopPssKb` | {'int': 2383} |
| `hostPssKb` | {'int': 2383} |
| `kind` | {'str': 2383} |
| `memAvailableKb` | {'int': 2383} |
| `memTotalKb` | {'int': 2383} |
| `otherPssKb` | {'int': 2383} |
| `processes` | {'int': 2383} |
| `pssFallbackProcesses` | {'int': 2383} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
