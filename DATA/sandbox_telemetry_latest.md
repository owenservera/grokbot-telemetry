# sandbox_telemetry_parse — 2026-10-15 23:52:42 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1116810 lines=2475
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2470 |
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
| `chromeBrowserPssKb` | {'int': 2470} |
| `chromeGpuPssKb` | {'int': 2470} |
| `chromeOtherPssKb` | {'int': 2470} |
| `chromeProcesses` | {'int': 2470} |
| `chromeProfiles` | {'int': 2470} |
| `chromeRendererMaxPssKb` | {'int': 2470} |
| `chromeRendererPssKb` | {'int': 2470} |
| `chromeRenderers` | {'int': 2470} |
| `chromeTabs` | {'int': 2470} |
| `chromeTabsProbedProfiles` | {'int': 2470} |
| `chromeUtilityPssKb` | {'int': 2470} |
| `desktopPssKb` | {'int': 2470} |
| `hostPssKb` | {'int': 2470} |
| `kind` | {'str': 2470} |
| `memAvailableKb` | {'int': 2470} |
| `memTotalKb` | {'int': 2470} |
| `otherPssKb` | {'int': 2470} |
| `processes` | {'int': 2470} |
| `pssFallbackProcesses` | {'int': 2470} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
