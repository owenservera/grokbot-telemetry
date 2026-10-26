# sandbox_telemetry_parse — 2026-10-26 21:17:22 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=143982 lines=322
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 317 |
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
| `chromeBrowserPssKb` | {'int': 317} |
| `chromeGpuPssKb` | {'int': 317} |
| `chromeOtherPssKb` | {'int': 317} |
| `chromeProcesses` | {'int': 317} |
| `chromeProfiles` | {'int': 317} |
| `chromeRendererMaxPssKb` | {'int': 317} |
| `chromeRendererPssKb` | {'int': 317} |
| `chromeRenderers` | {'int': 317} |
| `chromeTabs` | {'int': 317} |
| `chromeTabsProbedProfiles` | {'int': 317} |
| `chromeUtilityPssKb` | {'int': 317} |
| `desktopPssKb` | {'int': 317} |
| `hostPssKb` | {'int': 317} |
| `kind` | {'str': 317} |
| `memAvailableKb` | {'int': 317} |
| `memTotalKb` | {'int': 317} |
| `otherPssKb` | {'int': 317} |
| `processes` | {'int': 317} |
| `pssFallbackProcesses` | {'int': 317} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
