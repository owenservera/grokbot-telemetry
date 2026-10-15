# sandbox_telemetry_parse — 2026-10-15 22:49:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1092854 lines=2422
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2417 |
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
| `chromeBrowserPssKb` | {'int': 2417} |
| `chromeGpuPssKb` | {'int': 2417} |
| `chromeOtherPssKb` | {'int': 2417} |
| `chromeProcesses` | {'int': 2417} |
| `chromeProfiles` | {'int': 2417} |
| `chromeRendererMaxPssKb` | {'int': 2417} |
| `chromeRendererPssKb` | {'int': 2417} |
| `chromeRenderers` | {'int': 2417} |
| `chromeTabs` | {'int': 2417} |
| `chromeTabsProbedProfiles` | {'int': 2417} |
| `chromeUtilityPssKb` | {'int': 2417} |
| `desktopPssKb` | {'int': 2417} |
| `hostPssKb` | {'int': 2417} |
| `kind` | {'str': 2417} |
| `memAvailableKb` | {'int': 2417} |
| `memTotalKb` | {'int': 2417} |
| `otherPssKb` | {'int': 2417} |
| `processes` | {'int': 2417} |
| `pssFallbackProcesses` | {'int': 2417} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
