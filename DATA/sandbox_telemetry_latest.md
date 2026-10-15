# sandbox_telemetry_parse — 2026-10-15 12:47:01 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=867306 lines=1923
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1918 |
| `boot_stage` | 3 |
| `egress_tunnel` | 1 |
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
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1918} |
| `chromeGpuPssKb` | {'int': 1918} |
| `chromeOtherPssKb` | {'int': 1918} |
| `chromeProcesses` | {'int': 1918} |
| `chromeProfiles` | {'int': 1918} |
| `chromeRendererMaxPssKb` | {'int': 1918} |
| `chromeRendererPssKb` | {'int': 1918} |
| `chromeRenderers` | {'int': 1918} |
| `chromeTabs` | {'int': 1918} |
| `chromeTabsProbedProfiles` | {'int': 1918} |
| `chromeUtilityPssKb` | {'int': 1918} |
| `desktopPssKb` | {'int': 1918} |
| `hostPssKb` | {'int': 1918} |
| `kind` | {'str': 1918} |
| `memAvailableKb` | {'int': 1918} |
| `memTotalKb` | {'int': 1918} |
| `otherPssKb` | {'int': 1918} |
| `processes` | {'int': 1918} |
| `pssFallbackProcesses` | {'int': 1918} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
