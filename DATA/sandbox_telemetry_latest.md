# sandbox_telemetry_parse — 2026-10-12 20:24:07 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=659856 lines=1464
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1459 |
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
| `chromeBrowserPssKb` | {'int': 1459} |
| `chromeGpuPssKb` | {'int': 1459} |
| `chromeOtherPssKb` | {'int': 1459} |
| `chromeProcesses` | {'int': 1459} |
| `chromeProfiles` | {'int': 1459} |
| `chromeRendererMaxPssKb` | {'int': 1459} |
| `chromeRendererPssKb` | {'int': 1459} |
| `chromeRenderers` | {'int': 1459} |
| `chromeTabs` | {'int': 1459} |
| `chromeTabsProbedProfiles` | {'int': 1459} |
| `chromeUtilityPssKb` | {'int': 1459} |
| `desktopPssKb` | {'int': 1459} |
| `hostPssKb` | {'int': 1459} |
| `kind` | {'str': 1459} |
| `memAvailableKb` | {'int': 1459} |
| `memTotalKb` | {'int': 1459} |
| `otherPssKb` | {'int': 1459} |
| `processes` | {'int': 1459} |
| `pssFallbackProcesses` | {'int': 1459} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
