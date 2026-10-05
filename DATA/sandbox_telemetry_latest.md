# sandbox_telemetry_parse — 2026-10-06 00:07:52 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=34382 lines=80
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 75 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 75} |
| `chromeGpuPssKb` | {'int': 75} |
| `chromeOtherPssKb` | {'int': 75} |
| `chromeProcesses` | {'int': 75} |
| `chromeProfiles` | {'int': 75} |
| `chromeRendererMaxPssKb` | {'int': 75} |
| `chromeRendererPssKb` | {'int': 75} |
| `chromeRenderers` | {'int': 75} |
| `chromeTabs` | {'int': 75} |
| `chromeTabsProbedProfiles` | {'int': 75} |
| `chromeUtilityPssKb` | {'int': 75} |
| `desktopPssKb` | {'int': 75} |
| `hostPssKb` | {'int': 75} |
| `kind` | {'str': 75} |
| `memAvailableKb` | {'int': 75} |
| `memTotalKb` | {'int': 75} |
| `otherPssKb` | {'int': 75} |
| `processes` | {'int': 75} |
| `pssFallbackProcesses` | {'int': 75} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
