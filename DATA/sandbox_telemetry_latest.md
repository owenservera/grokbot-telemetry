# sandbox_telemetry_parse — 2026-10-27 06:53:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=379280 lines=842
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 837 |
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
| `chromeBrowserPssKb` | {'int': 837} |
| `chromeGpuPssKb` | {'int': 837} |
| `chromeOtherPssKb` | {'int': 837} |
| `chromeProcesses` | {'int': 837} |
| `chromeProfiles` | {'int': 837} |
| `chromeRendererMaxPssKb` | {'int': 837} |
| `chromeRendererPssKb` | {'int': 837} |
| `chromeRenderers` | {'int': 837} |
| `chromeTabs` | {'int': 837} |
| `chromeTabsProbedProfiles` | {'int': 837} |
| `chromeUtilityPssKb` | {'int': 837} |
| `desktopPssKb` | {'int': 837} |
| `hostPssKb` | {'int': 837} |
| `kind` | {'str': 837} |
| `memAvailableKb` | {'int': 837} |
| `memTotalKb` | {'int': 837} |
| `otherPssKb` | {'int': 837} |
| `processes` | {'int': 837} |
| `pssFallbackProcesses` | {'int': 837} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
