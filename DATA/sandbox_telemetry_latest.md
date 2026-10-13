# sandbox_telemetry_parse — 2026-10-14 01:56:10 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=33366 lines=78
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 73 |
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
| `chromeBrowserPssKb` | {'int': 73} |
| `chromeGpuPssKb` | {'int': 73} |
| `chromeOtherPssKb` | {'int': 73} |
| `chromeProcesses` | {'int': 73} |
| `chromeProfiles` | {'int': 73} |
| `chromeRendererMaxPssKb` | {'int': 73} |
| `chromeRendererPssKb` | {'int': 73} |
| `chromeRenderers` | {'int': 73} |
| `chromeTabs` | {'int': 73} |
| `chromeTabsProbedProfiles` | {'int': 73} |
| `chromeUtilityPssKb` | {'int': 73} |
| `desktopPssKb` | {'int': 73} |
| `hostPssKb` | {'int': 73} |
| `kind` | {'str': 73} |
| `memAvailableKb` | {'int': 73} |
| `memTotalKb` | {'int': 73} |
| `otherPssKb` | {'int': 73} |
| `processes` | {'int': 73} |
| `pssFallbackProcesses` | {'int': 73} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
