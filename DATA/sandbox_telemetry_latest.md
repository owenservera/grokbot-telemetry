# sandbox_telemetry_parse — 2026-10-14 01:49:47 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=30654 lines=72
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 67 |
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
| `chromeBrowserPssKb` | {'int': 67} |
| `chromeGpuPssKb` | {'int': 67} |
| `chromeOtherPssKb` | {'int': 67} |
| `chromeProcesses` | {'int': 67} |
| `chromeProfiles` | {'int': 67} |
| `chromeRendererMaxPssKb` | {'int': 67} |
| `chromeRendererPssKb` | {'int': 67} |
| `chromeRenderers` | {'int': 67} |
| `chromeTabs` | {'int': 67} |
| `chromeTabsProbedProfiles` | {'int': 67} |
| `chromeUtilityPssKb` | {'int': 67} |
| `desktopPssKb` | {'int': 67} |
| `hostPssKb` | {'int': 67} |
| `kind` | {'str': 67} |
| `memAvailableKb` | {'int': 67} |
| `memTotalKb` | {'int': 67} |
| `otherPssKb` | {'int': 67} |
| `processes` | {'int': 67} |
| `pssFallbackProcesses` | {'int': 67} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
