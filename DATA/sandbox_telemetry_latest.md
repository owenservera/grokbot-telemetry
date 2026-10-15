# sandbox_telemetry_parse — 2026-10-15 07:08:03 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=727638 lines=1614
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1609 |
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
| `chromeBrowserPssKb` | {'int': 1609} |
| `chromeGpuPssKb` | {'int': 1609} |
| `chromeOtherPssKb` | {'int': 1609} |
| `chromeProcesses` | {'int': 1609} |
| `chromeProfiles` | {'int': 1609} |
| `chromeRendererMaxPssKb` | {'int': 1609} |
| `chromeRendererPssKb` | {'int': 1609} |
| `chromeRenderers` | {'int': 1609} |
| `chromeTabs` | {'int': 1609} |
| `chromeTabsProbedProfiles` | {'int': 1609} |
| `chromeUtilityPssKb` | {'int': 1609} |
| `desktopPssKb` | {'int': 1609} |
| `hostPssKb` | {'int': 1609} |
| `kind` | {'str': 1609} |
| `memAvailableKb` | {'int': 1609} |
| `memTotalKb` | {'int': 1609} |
| `otherPssKb` | {'int': 1609} |
| `processes` | {'int': 1609} |
| `pssFallbackProcesses` | {'int': 1609} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
