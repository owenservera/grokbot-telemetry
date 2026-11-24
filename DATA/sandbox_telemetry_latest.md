# sandbox_telemetry_parse — 2026-11-24 21:49:41 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2464857 lines=5462
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 5447 |
| `egress_tunnel` | 11 |
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
| `attempt` | {'int': 11} |
| `exitStatus` | {'int': 5} |
| `kind` | {'str': 11} |
| `outcome` | {'str': 11} |
| `runtimeS` | {'int': 5} |

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
| `chromeBrowserPssKb` | {'int': 5447} |
| `chromeGpuPssKb` | {'int': 5447} |
| `chromeOtherPssKb` | {'int': 5447} |
| `chromeProcesses` | {'int': 5447} |
| `chromeProfiles` | {'int': 5447} |
| `chromeRendererMaxPssKb` | {'int': 5447} |
| `chromeRendererPssKb` | {'int': 5447} |
| `chromeRenderers` | {'int': 5447} |
| `chromeTabs` | {'int': 5447} |
| `chromeTabsProbedProfiles` | {'int': 5447} |
| `chromeUtilityPssKb` | {'int': 5447} |
| `desktopPssKb` | {'int': 5447} |
| `hostPssKb` | {'int': 5447} |
| `kind` | {'str': 5447} |
| `memAvailableKb` | {'int': 5447} |
| `memTotalKb` | {'int': 5447} |
| `otherPssKb` | {'int': 5447} |
| `processes` | {'int': 5447} |
| `pssFallbackProcesses` | {'int': 5447} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
