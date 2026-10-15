# sandbox_telemetry_parse — 2026-10-15 06:44:23 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=716790 lines=1590
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1585 |
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
| `chromeBrowserPssKb` | {'int': 1585} |
| `chromeGpuPssKb` | {'int': 1585} |
| `chromeOtherPssKb` | {'int': 1585} |
| `chromeProcesses` | {'int': 1585} |
| `chromeProfiles` | {'int': 1585} |
| `chromeRendererMaxPssKb` | {'int': 1585} |
| `chromeRendererPssKb` | {'int': 1585} |
| `chromeRenderers` | {'int': 1585} |
| `chromeTabs` | {'int': 1585} |
| `chromeTabsProbedProfiles` | {'int': 1585} |
| `chromeUtilityPssKb` | {'int': 1585} |
| `desktopPssKb` | {'int': 1585} |
| `hostPssKb` | {'int': 1585} |
| `kind` | {'str': 1585} |
| `memAvailableKb` | {'int': 1585} |
| `memTotalKb` | {'int': 1585} |
| `otherPssKb` | {'int': 1585} |
| `processes` | {'int': 1585} |
| `pssFallbackProcesses` | {'int': 1585} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
