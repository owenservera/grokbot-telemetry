# sandbox_telemetry_parse — 2026-10-27 00:35:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=227787 lines=507
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 502 |
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
| `chromeBrowserPssKb` | {'int': 502} |
| `chromeGpuPssKb` | {'int': 502} |
| `chromeOtherPssKb` | {'int': 502} |
| `chromeProcesses` | {'int': 502} |
| `chromeProfiles` | {'int': 502} |
| `chromeRendererMaxPssKb` | {'int': 502} |
| `chromeRendererPssKb` | {'int': 502} |
| `chromeRenderers` | {'int': 502} |
| `chromeTabs` | {'int': 502} |
| `chromeTabsProbedProfiles` | {'int': 502} |
| `chromeUtilityPssKb` | {'int': 502} |
| `desktopPssKb` | {'int': 502} |
| `hostPssKb` | {'int': 502} |
| `kind` | {'str': 502} |
| `memAvailableKb` | {'int': 502} |
| `memTotalKb` | {'int': 502} |
| `otherPssKb` | {'int': 502} |
| `processes` | {'int': 502} |
| `pssFallbackProcesses` | {'int': 502} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
