# sandbox_telemetry_parse — 2026-10-14 09:40:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=216878 lines=484
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 479 |
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
| `chromeBrowserPssKb` | {'int': 479} |
| `chromeGpuPssKb` | {'int': 479} |
| `chromeOtherPssKb` | {'int': 479} |
| `chromeProcesses` | {'int': 479} |
| `chromeProfiles` | {'int': 479} |
| `chromeRendererMaxPssKb` | {'int': 479} |
| `chromeRendererPssKb` | {'int': 479} |
| `chromeRenderers` | {'int': 479} |
| `chromeTabs` | {'int': 479} |
| `chromeTabsProbedProfiles` | {'int': 479} |
| `chromeUtilityPssKb` | {'int': 479} |
| `desktopPssKb` | {'int': 479} |
| `hostPssKb` | {'int': 479} |
| `kind` | {'str': 479} |
| `memAvailableKb` | {'int': 479} |
| `memTotalKb` | {'int': 479} |
| `otherPssKb` | {'int': 479} |
| `processes` | {'int': 479} |
| `pssFallbackProcesses` | {'int': 479} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
