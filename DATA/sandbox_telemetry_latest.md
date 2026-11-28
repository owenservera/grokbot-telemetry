# sandbox_telemetry_parse — 2026-11-28 10:44:18 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=852997 lines=1892
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1884 |
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
| `chromeBrowserPssKb` | {'int': 1884} |
| `chromeGpuPssKb` | {'int': 1884} |
| `chromeOtherPssKb` | {'int': 1884} |
| `chromeProcesses` | {'int': 1884} |
| `chromeProfiles` | {'int': 1884} |
| `chromeRendererMaxPssKb` | {'int': 1884} |
| `chromeRendererPssKb` | {'int': 1884} |
| `chromeRenderers` | {'int': 1884} |
| `chromeTabs` | {'int': 1884} |
| `chromeTabsProbedProfiles` | {'int': 1884} |
| `chromeUtilityPssKb` | {'int': 1884} |
| `desktopPssKb` | {'int': 1884} |
| `hostPssKb` | {'int': 1884} |
| `kind` | {'str': 1884} |
| `memAvailableKb` | {'int': 1884} |
| `memTotalKb` | {'int': 1884} |
| `otherPssKb` | {'int': 1884} |
| `processes` | {'int': 1884} |
| `pssFallbackProcesses` | {'int': 1884} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
