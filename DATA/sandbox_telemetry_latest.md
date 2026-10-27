# sandbox_telemetry_parse — 2026-10-27 07:51:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=401880 lines=892
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 887 |
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
| `chromeBrowserPssKb` | {'int': 887} |
| `chromeGpuPssKb` | {'int': 887} |
| `chromeOtherPssKb` | {'int': 887} |
| `chromeProcesses` | {'int': 887} |
| `chromeProfiles` | {'int': 887} |
| `chromeRendererMaxPssKb` | {'int': 887} |
| `chromeRendererPssKb` | {'int': 887} |
| `chromeRenderers` | {'int': 887} |
| `chromeTabs` | {'int': 887} |
| `chromeTabsProbedProfiles` | {'int': 887} |
| `chromeUtilityPssKb` | {'int': 887} |
| `desktopPssKb` | {'int': 887} |
| `hostPssKb` | {'int': 887} |
| `kind` | {'str': 887} |
| `memAvailableKb` | {'int': 887} |
| `memTotalKb` | {'int': 887} |
| `otherPssKb` | {'int': 887} |
| `processes` | {'int': 887} |
| `pssFallbackProcesses` | {'int': 887} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
