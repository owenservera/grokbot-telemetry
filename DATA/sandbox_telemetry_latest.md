# sandbox_telemetry_parse — 2026-10-07 04:09:24 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=794269 lines=1746
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1741 |
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
| `chromeBrowserPssKb` | {'int': 1741} |
| `chromeGpuPssKb` | {'int': 1741} |
| `chromeOtherPssKb` | {'int': 1741} |
| `chromeProcesses` | {'int': 1741} |
| `chromeProfiles` | {'int': 1741} |
| `chromeRendererMaxPssKb` | {'int': 1741} |
| `chromeRendererPssKb` | {'int': 1741} |
| `chromeRenderers` | {'int': 1741} |
| `chromeTabs` | {'int': 1741} |
| `chromeTabsProbedProfiles` | {'int': 1741} |
| `chromeUtilityPssKb` | {'int': 1741} |
| `desktopPssKb` | {'int': 1741} |
| `hostPssKb` | {'int': 1741} |
| `kind` | {'str': 1741} |
| `memAvailableKb` | {'int': 1741} |
| `memTotalKb` | {'int': 1741} |
| `otherPssKb` | {'int': 1741} |
| `processes` | {'int': 1741} |
| `pssFallbackProcesses` | {'int': 1741} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
