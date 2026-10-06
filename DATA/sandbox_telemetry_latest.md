# sandbox_telemetry_parse — 2026-10-06 12:52:11 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=380042 lines=838
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 833 |
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
| `chromeBrowserPssKb` | {'int': 833} |
| `chromeGpuPssKb` | {'int': 833} |
| `chromeOtherPssKb` | {'int': 833} |
| `chromeProcesses` | {'int': 833} |
| `chromeProfiles` | {'int': 833} |
| `chromeRendererMaxPssKb` | {'int': 833} |
| `chromeRendererPssKb` | {'int': 833} |
| `chromeRenderers` | {'int': 833} |
| `chromeTabs` | {'int': 833} |
| `chromeTabsProbedProfiles` | {'int': 833} |
| `chromeUtilityPssKb` | {'int': 833} |
| `desktopPssKb` | {'int': 833} |
| `hostPssKb` | {'int': 833} |
| `kind` | {'str': 833} |
| `memAvailableKb` | {'int': 833} |
| `memTotalKb` | {'int': 833} |
| `otherPssKb` | {'int': 833} |
| `processes` | {'int': 833} |
| `pssFallbackProcesses` | {'int': 833} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
