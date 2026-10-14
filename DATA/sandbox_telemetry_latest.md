# sandbox_telemetry_parse — 2026-10-14 12:44:18 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=292362 lines=651
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 646 |
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
| `chromeBrowserPssKb` | {'int': 646} |
| `chromeGpuPssKb` | {'int': 646} |
| `chromeOtherPssKb` | {'int': 646} |
| `chromeProcesses` | {'int': 646} |
| `chromeProfiles` | {'int': 646} |
| `chromeRendererMaxPssKb` | {'int': 646} |
| `chromeRendererPssKb` | {'int': 646} |
| `chromeRenderers` | {'int': 646} |
| `chromeTabs` | {'int': 646} |
| `chromeTabsProbedProfiles` | {'int': 646} |
| `chromeUtilityPssKb` | {'int': 646} |
| `desktopPssKb` | {'int': 646} |
| `hostPssKb` | {'int': 646} |
| `kind` | {'str': 646} |
| `memAvailableKb` | {'int': 646} |
| `memTotalKb` | {'int': 646} |
| `otherPssKb` | {'int': 646} |
| `processes` | {'int': 646} |
| `pssFallbackProcesses` | {'int': 646} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
