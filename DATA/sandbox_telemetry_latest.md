# sandbox_telemetry_parse — 2026-10-15 02:55:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=627746 lines=1393
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1388 |
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
| `chromeBrowserPssKb` | {'int': 1388} |
| `chromeGpuPssKb` | {'int': 1388} |
| `chromeOtherPssKb` | {'int': 1388} |
| `chromeProcesses` | {'int': 1388} |
| `chromeProfiles` | {'int': 1388} |
| `chromeRendererMaxPssKb` | {'int': 1388} |
| `chromeRendererPssKb` | {'int': 1388} |
| `chromeRenderers` | {'int': 1388} |
| `chromeTabs` | {'int': 1388} |
| `chromeTabsProbedProfiles` | {'int': 1388} |
| `chromeUtilityPssKb` | {'int': 1388} |
| `desktopPssKb` | {'int': 1388} |
| `hostPssKb` | {'int': 1388} |
| `kind` | {'str': 1388} |
| `memAvailableKb` | {'int': 1388} |
| `memTotalKb` | {'int': 1388} |
| `otherPssKb` | {'int': 1388} |
| `processes` | {'int': 1388} |
| `pssFallbackProcesses` | {'int': 1388} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
