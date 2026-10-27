# sandbox_telemetry_parse — 2026-10-27 04:50:52 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=329560 lines=732
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 727 |
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
| `chromeBrowserPssKb` | {'int': 727} |
| `chromeGpuPssKb` | {'int': 727} |
| `chromeOtherPssKb` | {'int': 727} |
| `chromeProcesses` | {'int': 727} |
| `chromeProfiles` | {'int': 727} |
| `chromeRendererMaxPssKb` | {'int': 727} |
| `chromeRendererPssKb` | {'int': 727} |
| `chromeRenderers` | {'int': 727} |
| `chromeTabs` | {'int': 727} |
| `chromeTabsProbedProfiles` | {'int': 727} |
| `chromeUtilityPssKb` | {'int': 727} |
| `desktopPssKb` | {'int': 727} |
| `hostPssKb` | {'int': 727} |
| `kind` | {'str': 727} |
| `memAvailableKb` | {'int': 727} |
| `memTotalKb` | {'int': 727} |
| `otherPssKb` | {'int': 727} |
| `processes` | {'int': 727} |
| `pssFallbackProcesses` | {'int': 727} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
