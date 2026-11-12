# sandbox_telemetry_parse — 2026-11-12 06:37:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=2008283 lines=4446
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 4437 |
| `egress_tunnel` | 5 |
| `boot_stage` | 3 |
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
| `attempt` | {'int': 5} |
| `exitStatus` | {'int': 2} |
| `kind` | {'str': 5} |
| `outcome` | {'str': 5} |
| `runtimeS` | {'int': 2} |

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
| `chromeBrowserPssKb` | {'int': 4437} |
| `chromeGpuPssKb` | {'int': 4437} |
| `chromeOtherPssKb` | {'int': 4437} |
| `chromeProcesses` | {'int': 4437} |
| `chromeProfiles` | {'int': 4437} |
| `chromeRendererMaxPssKb` | {'int': 4437} |
| `chromeRendererPssKb` | {'int': 4437} |
| `chromeRenderers` | {'int': 4437} |
| `chromeTabs` | {'int': 4437} |
| `chromeTabsProbedProfiles` | {'int': 4437} |
| `chromeUtilityPssKb` | {'int': 4437} |
| `desktopPssKb` | {'int': 4437} |
| `hostPssKb` | {'int': 4437} |
| `kind` | {'str': 4437} |
| `memAvailableKb` | {'int': 4437} |
| `memTotalKb` | {'int': 4437} |
| `otherPssKb` | {'int': 4437} |
| `processes` | {'int': 4437} |
| `pssFallbackProcesses` | {'int': 4437} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
