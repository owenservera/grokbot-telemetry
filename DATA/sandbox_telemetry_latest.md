# sandbox_telemetry_parse — 2026-10-27 10:44:02 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=473350 lines=1050
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1045 |
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
| `chromeBrowserPssKb` | {'int': 1045} |
| `chromeGpuPssKb` | {'int': 1045} |
| `chromeOtherPssKb` | {'int': 1045} |
| `chromeProcesses` | {'int': 1045} |
| `chromeProfiles` | {'int': 1045} |
| `chromeRendererMaxPssKb` | {'int': 1045} |
| `chromeRendererPssKb` | {'int': 1045} |
| `chromeRenderers` | {'int': 1045} |
| `chromeTabs` | {'int': 1045} |
| `chromeTabsProbedProfiles` | {'int': 1045} |
| `chromeUtilityPssKb` | {'int': 1045} |
| `desktopPssKb` | {'int': 1045} |
| `hostPssKb` | {'int': 1045} |
| `kind` | {'str': 1045} |
| `memAvailableKb` | {'int': 1045} |
| `memTotalKb` | {'int': 1045} |
| `otherPssKb` | {'int': 1045} |
| `processes` | {'int': 1045} |
| `pssFallbackProcesses` | {'int': 1045} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
