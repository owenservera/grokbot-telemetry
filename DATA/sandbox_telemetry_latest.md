# sandbox_telemetry_parse — 2026-10-15 10:35:35 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=813970 lines=1805
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1800 |
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
| `chromeBrowserPssKb` | {'int': 1800} |
| `chromeGpuPssKb` | {'int': 1800} |
| `chromeOtherPssKb` | {'int': 1800} |
| `chromeProcesses` | {'int': 1800} |
| `chromeProfiles` | {'int': 1800} |
| `chromeRendererMaxPssKb` | {'int': 1800} |
| `chromeRendererPssKb` | {'int': 1800} |
| `chromeRenderers` | {'int': 1800} |
| `chromeTabs` | {'int': 1800} |
| `chromeTabsProbedProfiles` | {'int': 1800} |
| `chromeUtilityPssKb` | {'int': 1800} |
| `desktopPssKb` | {'int': 1800} |
| `hostPssKb` | {'int': 1800} |
| `kind` | {'str': 1800} |
| `memAvailableKb` | {'int': 1800} |
| `memTotalKb` | {'int': 1800} |
| `otherPssKb` | {'int': 1800} |
| `processes` | {'int': 1800} |
| `pssFallbackProcesses` | {'int': 1800} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
