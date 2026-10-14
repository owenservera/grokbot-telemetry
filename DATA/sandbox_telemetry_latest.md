# sandbox_telemetry_parse — 2026-10-15 01:59:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=604242 lines=1341
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1336 |
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
| `chromeBrowserPssKb` | {'int': 1336} |
| `chromeGpuPssKb` | {'int': 1336} |
| `chromeOtherPssKb` | {'int': 1336} |
| `chromeProcesses` | {'int': 1336} |
| `chromeProfiles` | {'int': 1336} |
| `chromeRendererMaxPssKb` | {'int': 1336} |
| `chromeRendererPssKb` | {'int': 1336} |
| `chromeRenderers` | {'int': 1336} |
| `chromeTabs` | {'int': 1336} |
| `chromeTabsProbedProfiles` | {'int': 1336} |
| `chromeUtilityPssKb` | {'int': 1336} |
| `desktopPssKb` | {'int': 1336} |
| `hostPssKb` | {'int': 1336} |
| `kind` | {'str': 1336} |
| `memAvailableKb` | {'int': 1336} |
| `memTotalKb` | {'int': 1336} |
| `otherPssKb` | {'int': 1336} |
| `processes` | {'int': 1336} |
| `pssFallbackProcesses` | {'int': 1336} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
