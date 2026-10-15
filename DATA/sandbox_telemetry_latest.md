# sandbox_telemetry_parse — 2026-10-15 22:30:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1086074 lines=2407
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2402 |
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
| `chromeBrowserPssKb` | {'int': 2402} |
| `chromeGpuPssKb` | {'int': 2402} |
| `chromeOtherPssKb` | {'int': 2402} |
| `chromeProcesses` | {'int': 2402} |
| `chromeProfiles` | {'int': 2402} |
| `chromeRendererMaxPssKb` | {'int': 2402} |
| `chromeRendererPssKb` | {'int': 2402} |
| `chromeRenderers` | {'int': 2402} |
| `chromeTabs` | {'int': 2402} |
| `chromeTabsProbedProfiles` | {'int': 2402} |
| `chromeUtilityPssKb` | {'int': 2402} |
| `desktopPssKb` | {'int': 2402} |
| `hostPssKb` | {'int': 2402} |
| `kind` | {'str': 2402} |
| `memAvailableKb` | {'int': 2402} |
| `memTotalKb` | {'int': 2402} |
| `otherPssKb` | {'int': 2402} |
| `processes` | {'int': 2402} |
| `pssFallbackProcesses` | {'int': 2402} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
