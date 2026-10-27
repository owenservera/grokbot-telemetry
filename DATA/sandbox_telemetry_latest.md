# sandbox_telemetry_parse — 2026-10-27 10:13:33 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=460666 lines=1022
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1017 |
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
| `chromeBrowserPssKb` | {'int': 1017} |
| `chromeGpuPssKb` | {'int': 1017} |
| `chromeOtherPssKb` | {'int': 1017} |
| `chromeProcesses` | {'int': 1017} |
| `chromeProfiles` | {'int': 1017} |
| `chromeRendererMaxPssKb` | {'int': 1017} |
| `chromeRendererPssKb` | {'int': 1017} |
| `chromeRenderers` | {'int': 1017} |
| `chromeTabs` | {'int': 1017} |
| `chromeTabsProbedProfiles` | {'int': 1017} |
| `chromeUtilityPssKb` | {'int': 1017} |
| `desktopPssKb` | {'int': 1017} |
| `hostPssKb` | {'int': 1017} |
| `kind` | {'str': 1017} |
| `memAvailableKb` | {'int': 1017} |
| `memTotalKb` | {'int': 1017} |
| `otherPssKb` | {'int': 1017} |
| `processes` | {'int': 1017} |
| `pssFallbackProcesses` | {'int': 1017} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
