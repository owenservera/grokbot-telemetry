# sandbox_telemetry_parse — 2026-10-14 15:52:00 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=366490 lines=815
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 810 |
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
| `chromeBrowserPssKb` | {'int': 810} |
| `chromeGpuPssKb` | {'int': 810} |
| `chromeOtherPssKb` | {'int': 810} |
| `chromeProcesses` | {'int': 810} |
| `chromeProfiles` | {'int': 810} |
| `chromeRendererMaxPssKb` | {'int': 810} |
| `chromeRendererPssKb` | {'int': 810} |
| `chromeRenderers` | {'int': 810} |
| `chromeTabs` | {'int': 810} |
| `chromeTabsProbedProfiles` | {'int': 810} |
| `chromeUtilityPssKb` | {'int': 810} |
| `desktopPssKb` | {'int': 810} |
| `hostPssKb` | {'int': 810} |
| `kind` | {'str': 810} |
| `memAvailableKb` | {'int': 810} |
| `memTotalKb` | {'int': 810} |
| `otherPssKb` | {'int': 810} |
| `processes` | {'int': 810} |
| `pssFallbackProcesses` | {'int': 810} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
