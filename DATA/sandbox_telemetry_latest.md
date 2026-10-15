# sandbox_telemetry_parse — 2026-10-15 22:11:05 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1079746 lines=2393
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2388 |
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
| `chromeBrowserPssKb` | {'int': 2388} |
| `chromeGpuPssKb` | {'int': 2388} |
| `chromeOtherPssKb` | {'int': 2388} |
| `chromeProcesses` | {'int': 2388} |
| `chromeProfiles` | {'int': 2388} |
| `chromeRendererMaxPssKb` | {'int': 2388} |
| `chromeRendererPssKb` | {'int': 2388} |
| `chromeRenderers` | {'int': 2388} |
| `chromeTabs` | {'int': 2388} |
| `chromeTabsProbedProfiles` | {'int': 2388} |
| `chromeUtilityPssKb` | {'int': 2388} |
| `desktopPssKb` | {'int': 2388} |
| `hostPssKb` | {'int': 2388} |
| `kind` | {'str': 2388} |
| `memAvailableKb` | {'int': 2388} |
| `memTotalKb` | {'int': 2388} |
| `otherPssKb` | {'int': 2388} |
| `processes` | {'int': 2388} |
| `pssFallbackProcesses` | {'int': 2388} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
