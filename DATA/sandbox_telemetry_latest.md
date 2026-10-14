# sandbox_telemetry_parse — 2026-10-14 10:04:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=225014 lines=502
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 497 |
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
| `chromeBrowserPssKb` | {'int': 497} |
| `chromeGpuPssKb` | {'int': 497} |
| `chromeOtherPssKb` | {'int': 497} |
| `chromeProcesses` | {'int': 497} |
| `chromeProfiles` | {'int': 497} |
| `chromeRendererMaxPssKb` | {'int': 497} |
| `chromeRendererPssKb` | {'int': 497} |
| `chromeRenderers` | {'int': 497} |
| `chromeTabs` | {'int': 497} |
| `chromeTabsProbedProfiles` | {'int': 497} |
| `chromeUtilityPssKb` | {'int': 497} |
| `desktopPssKb` | {'int': 497} |
| `hostPssKb` | {'int': 497} |
| `kind` | {'str': 497} |
| `memAvailableKb` | {'int': 497} |
| `memTotalKb` | {'int': 497} |
| `otherPssKb` | {'int': 497} |
| `processes` | {'int': 497} |
| `pssFallbackProcesses` | {'int': 497} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
