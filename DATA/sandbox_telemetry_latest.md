# sandbox_telemetry_parse — 2026-10-14 09:03:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=201962 lines=451
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 446 |
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
| `chromeBrowserPssKb` | {'int': 446} |
| `chromeGpuPssKb` | {'int': 446} |
| `chromeOtherPssKb` | {'int': 446} |
| `chromeProcesses` | {'int': 446} |
| `chromeProfiles` | {'int': 446} |
| `chromeRendererMaxPssKb` | {'int': 446} |
| `chromeRendererPssKb` | {'int': 446} |
| `chromeRenderers` | {'int': 446} |
| `chromeTabs` | {'int': 446} |
| `chromeTabsProbedProfiles` | {'int': 446} |
| `chromeUtilityPssKb` | {'int': 446} |
| `desktopPssKb` | {'int': 446} |
| `hostPssKb` | {'int': 446} |
| `kind` | {'str': 446} |
| `memAvailableKb` | {'int': 446} |
| `memTotalKb` | {'int': 446} |
| `otherPssKb` | {'int': 446} |
| `processes` | {'int': 446} |
| `pssFallbackProcesses` | {'int': 446} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
