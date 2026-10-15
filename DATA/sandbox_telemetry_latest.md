# sandbox_telemetry_parse — 2026-10-15 04:28:17 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=665262 lines=1476
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1471 |
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
| `chromeBrowserPssKb` | {'int': 1471} |
| `chromeGpuPssKb` | {'int': 1471} |
| `chromeOtherPssKb` | {'int': 1471} |
| `chromeProcesses` | {'int': 1471} |
| `chromeProfiles` | {'int': 1471} |
| `chromeRendererMaxPssKb` | {'int': 1471} |
| `chromeRendererPssKb` | {'int': 1471} |
| `chromeRenderers` | {'int': 1471} |
| `chromeTabs` | {'int': 1471} |
| `chromeTabsProbedProfiles` | {'int': 1471} |
| `chromeUtilityPssKb` | {'int': 1471} |
| `desktopPssKb` | {'int': 1471} |
| `hostPssKb` | {'int': 1471} |
| `kind` | {'str': 1471} |
| `memAvailableKb` | {'int': 1471} |
| `memTotalKb` | {'int': 1471} |
| `otherPssKb` | {'int': 1471} |
| `processes` | {'int': 1471} |
| `pssFallbackProcesses` | {'int': 1471} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
