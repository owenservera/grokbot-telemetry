# sandbox_telemetry_parse — 2026-10-15 14:12:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=896234 lines=1987
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1982 |
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
| `chromeBrowserPssKb` | {'int': 1982} |
| `chromeGpuPssKb` | {'int': 1982} |
| `chromeOtherPssKb` | {'int': 1982} |
| `chromeProcesses` | {'int': 1982} |
| `chromeProfiles` | {'int': 1982} |
| `chromeRendererMaxPssKb` | {'int': 1982} |
| `chromeRendererPssKb` | {'int': 1982} |
| `chromeRenderers` | {'int': 1982} |
| `chromeTabs` | {'int': 1982} |
| `chromeTabsProbedProfiles` | {'int': 1982} |
| `chromeUtilityPssKb` | {'int': 1982} |
| `desktopPssKb` | {'int': 1982} |
| `hostPssKb` | {'int': 1982} |
| `kind` | {'str': 1982} |
| `memAvailableKb` | {'int': 1982} |
| `memTotalKb` | {'int': 1982} |
| `otherPssKb` | {'int': 1982} |
| `processes` | {'int': 1982} |
| `pssFallbackProcesses` | {'int': 1982} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
