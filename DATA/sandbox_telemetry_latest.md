# sandbox_telemetry_parse — 2026-10-07 08:48:14 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=918301 lines=2018
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2013 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 2013} |
| `chromeGpuPssKb` | {'int': 2013} |
| `chromeOtherPssKb` | {'int': 2013} |
| `chromeProcesses` | {'int': 2013} |
| `chromeProfiles` | {'int': 2013} |
| `chromeRendererMaxPssKb` | {'int': 2013} |
| `chromeRendererPssKb` | {'int': 2013} |
| `chromeRenderers` | {'int': 2013} |
| `chromeTabs` | {'int': 2013} |
| `chromeTabsProbedProfiles` | {'int': 2013} |
| `chromeUtilityPssKb` | {'int': 2013} |
| `desktopPssKb` | {'int': 2013} |
| `hostPssKb` | {'int': 2013} |
| `kind` | {'str': 2013} |
| `memAvailableKb` | {'int': 2013} |
| `memTotalKb` | {'int': 2013} |
| `otherPssKb` | {'int': 2013} |
| `processes` | {'int': 2013} |
| `pssFallbackProcesses` | {'int': 2013} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
