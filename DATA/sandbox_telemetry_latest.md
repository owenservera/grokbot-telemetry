# sandbox_telemetry_parse — 2026-10-14 11:55:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=271118 lines=604
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 599 |
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
| `chromeBrowserPssKb` | {'int': 599} |
| `chromeGpuPssKb` | {'int': 599} |
| `chromeOtherPssKb` | {'int': 599} |
| `chromeProcesses` | {'int': 599} |
| `chromeProfiles` | {'int': 599} |
| `chromeRendererMaxPssKb` | {'int': 599} |
| `chromeRendererPssKb` | {'int': 599} |
| `chromeRenderers` | {'int': 599} |
| `chromeTabs` | {'int': 599} |
| `chromeTabsProbedProfiles` | {'int': 599} |
| `chromeUtilityPssKb` | {'int': 599} |
| `desktopPssKb` | {'int': 599} |
| `hostPssKb` | {'int': 599} |
| `kind` | {'str': 599} |
| `memAvailableKb` | {'int': 599} |
| `memTotalKb` | {'int': 599} |
| `otherPssKb` | {'int': 599} |
| `processes` | {'int': 599} |
| `pssFallbackProcesses` | {'int': 599} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
