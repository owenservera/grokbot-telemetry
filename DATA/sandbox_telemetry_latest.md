# sandbox_telemetry_parse — 2026-10-15 08:20:39 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=757470 lines=1680
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1675 |
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
| `chromeBrowserPssKb` | {'int': 1675} |
| `chromeGpuPssKb` | {'int': 1675} |
| `chromeOtherPssKb` | {'int': 1675} |
| `chromeProcesses` | {'int': 1675} |
| `chromeProfiles` | {'int': 1675} |
| `chromeRendererMaxPssKb` | {'int': 1675} |
| `chromeRendererPssKb` | {'int': 1675} |
| `chromeRenderers` | {'int': 1675} |
| `chromeTabs` | {'int': 1675} |
| `chromeTabsProbedProfiles` | {'int': 1675} |
| `chromeUtilityPssKb` | {'int': 1675} |
| `desktopPssKb` | {'int': 1675} |
| `hostPssKb` | {'int': 1675} |
| `kind` | {'str': 1675} |
| `memAvailableKb` | {'int': 1675} |
| `memTotalKb` | {'int': 1675} |
| `otherPssKb` | {'int': 1675} |
| `processes` | {'int': 1675} |
| `pssFallbackProcesses` | {'int': 1675} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
