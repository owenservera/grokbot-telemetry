# sandbox_telemetry_parse — 2026-10-14 09:46:49 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=219138 lines=489
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 484 |
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
| `chromeBrowserPssKb` | {'int': 484} |
| `chromeGpuPssKb` | {'int': 484} |
| `chromeOtherPssKb` | {'int': 484} |
| `chromeProcesses` | {'int': 484} |
| `chromeProfiles` | {'int': 484} |
| `chromeRendererMaxPssKb` | {'int': 484} |
| `chromeRendererPssKb` | {'int': 484} |
| `chromeRenderers` | {'int': 484} |
| `chromeTabs` | {'int': 484} |
| `chromeTabsProbedProfiles` | {'int': 484} |
| `chromeUtilityPssKb` | {'int': 484} |
| `desktopPssKb` | {'int': 484} |
| `hostPssKb` | {'int': 484} |
| `kind` | {'str': 484} |
| `memAvailableKb` | {'int': 484} |
| `memTotalKb` | {'int': 484} |
| `otherPssKb` | {'int': 484} |
| `processes` | {'int': 484} |
| `pssFallbackProcesses` | {'int': 484} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
