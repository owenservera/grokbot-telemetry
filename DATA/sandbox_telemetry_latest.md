# sandbox_telemetry_parse — 2026-10-07 10:52:12 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=974845 lines=2142
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2137 |
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
| `chromeBrowserPssKb` | {'int': 2137} |
| `chromeGpuPssKb` | {'int': 2137} |
| `chromeOtherPssKb` | {'int': 2137} |
| `chromeProcesses` | {'int': 2137} |
| `chromeProfiles` | {'int': 2137} |
| `chromeRendererMaxPssKb` | {'int': 2137} |
| `chromeRendererPssKb` | {'int': 2137} |
| `chromeRenderers` | {'int': 2137} |
| `chromeTabs` | {'int': 2137} |
| `chromeTabsProbedProfiles` | {'int': 2137} |
| `chromeUtilityPssKb` | {'int': 2137} |
| `desktopPssKb` | {'int': 2137} |
| `hostPssKb` | {'int': 2137} |
| `kind` | {'str': 2137} |
| `memAvailableKb` | {'int': 2137} |
| `memTotalKb` | {'int': 2137} |
| `otherPssKb` | {'int': 2137} |
| `processes` | {'int': 2137} |
| `pssFallbackProcesses` | {'int': 2137} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
