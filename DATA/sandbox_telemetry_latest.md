# sandbox_telemetry_parse — 2026-10-15 06:49:29 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=719050 lines=1595
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1590 |
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
| `chromeBrowserPssKb` | {'int': 1590} |
| `chromeGpuPssKb` | {'int': 1590} |
| `chromeOtherPssKb` | {'int': 1590} |
| `chromeProcesses` | {'int': 1590} |
| `chromeProfiles` | {'int': 1590} |
| `chromeRendererMaxPssKb` | {'int': 1590} |
| `chromeRendererPssKb` | {'int': 1590} |
| `chromeRenderers` | {'int': 1590} |
| `chromeTabs` | {'int': 1590} |
| `chromeTabsProbedProfiles` | {'int': 1590} |
| `chromeUtilityPssKb` | {'int': 1590} |
| `desktopPssKb` | {'int': 1590} |
| `hostPssKb` | {'int': 1590} |
| `kind` | {'str': 1590} |
| `memAvailableKb` | {'int': 1590} |
| `memTotalKb` | {'int': 1590} |
| `otherPssKb` | {'int': 1590} |
| `processes` | {'int': 1590} |
| `pssFallbackProcesses` | {'int': 1590} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
