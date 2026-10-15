# sandbox_telemetry_parse — 2026-10-15 07:33:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=738034 lines=1637
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1632 |
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
| `chromeBrowserPssKb` | {'int': 1632} |
| `chromeGpuPssKb` | {'int': 1632} |
| `chromeOtherPssKb` | {'int': 1632} |
| `chromeProcesses` | {'int': 1632} |
| `chromeProfiles` | {'int': 1632} |
| `chromeRendererMaxPssKb` | {'int': 1632} |
| `chromeRendererPssKb` | {'int': 1632} |
| `chromeRenderers` | {'int': 1632} |
| `chromeTabs` | {'int': 1632} |
| `chromeTabsProbedProfiles` | {'int': 1632} |
| `chromeUtilityPssKb` | {'int': 1632} |
| `desktopPssKb` | {'int': 1632} |
| `hostPssKb` | {'int': 1632} |
| `kind` | {'str': 1632} |
| `memAvailableKb` | {'int': 1632} |
| `memTotalKb` | {'int': 1632} |
| `otherPssKb` | {'int': 1632} |
| `processes` | {'int': 1632} |
| `pssFallbackProcesses` | {'int': 1632} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
