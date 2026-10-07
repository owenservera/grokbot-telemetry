# sandbox_telemetry_parse — 2026-10-07 09:34:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=939733 lines=2065
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2060 |
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
| `chromeBrowserPssKb` | {'int': 2060} |
| `chromeGpuPssKb` | {'int': 2060} |
| `chromeOtherPssKb` | {'int': 2060} |
| `chromeProcesses` | {'int': 2060} |
| `chromeProfiles` | {'int': 2060} |
| `chromeRendererMaxPssKb` | {'int': 2060} |
| `chromeRendererPssKb` | {'int': 2060} |
| `chromeRenderers` | {'int': 2060} |
| `chromeTabs` | {'int': 2060} |
| `chromeTabsProbedProfiles` | {'int': 2060} |
| `chromeUtilityPssKb` | {'int': 2060} |
| `desktopPssKb` | {'int': 2060} |
| `hostPssKb` | {'int': 2060} |
| `kind` | {'str': 2060} |
| `memAvailableKb` | {'int': 2060} |
| `memTotalKb` | {'int': 2060} |
| `otherPssKb` | {'int': 2060} |
| `processes` | {'int': 2060} |
| `pssFallbackProcesses` | {'int': 2060} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
