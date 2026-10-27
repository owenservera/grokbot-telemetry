# sandbox_telemetry_parse — 2026-10-27 11:01:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=479239 lines=1063
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1058 |
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
| `chromeBrowserPssKb` | {'int': 1058} |
| `chromeGpuPssKb` | {'int': 1058} |
| `chromeOtherPssKb` | {'int': 1058} |
| `chromeProcesses` | {'int': 1058} |
| `chromeProfiles` | {'int': 1058} |
| `chromeRendererMaxPssKb` | {'int': 1058} |
| `chromeRendererPssKb` | {'int': 1058} |
| `chromeRenderers` | {'int': 1058} |
| `chromeTabs` | {'int': 1058} |
| `chromeTabsProbedProfiles` | {'int': 1058} |
| `chromeUtilityPssKb` | {'int': 1058} |
| `desktopPssKb` | {'int': 1058} |
| `hostPssKb` | {'int': 1058} |
| `kind` | {'str': 1058} |
| `memAvailableKb` | {'int': 1058} |
| `memTotalKb` | {'int': 1058} |
| `otherPssKb` | {'int': 1058} |
| `processes` | {'int': 1058} |
| `pssFallbackProcesses` | {'int': 1058} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
