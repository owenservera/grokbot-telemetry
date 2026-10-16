# sandbox_telemetry_parse — 2026-10-16 12:07:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=431314 lines=1612
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1062 |
| `memory_sample` | 541 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `cookie_persist` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 541} |
| `chromeGpuPssKb` | {'int': 541} |
| `chromeOtherPssKb` | {'int': 541} |
| `chromeProcesses` | {'int': 541} |
| `chromeProfiles` | {'int': 541} |
| `chromeRendererMaxPssKb` | {'int': 541} |
| `chromeRendererPssKb` | {'int': 541} |
| `chromeRenderers` | {'int': 541} |
| `chromeTabs` | {'int': 541} |
| `chromeTabsProbedProfiles` | {'int': 541} |
| `chromeUtilityPssKb` | {'int': 541} |
| `desktopPssKb` | {'int': 541} |
| `hostPssKb` | {'int': 541} |
| `kind` | {'str': 541} |
| `memAvailableKb` | {'int': 541} |
| `memTotalKb` | {'int': 541} |
| `otherPssKb` | {'int': 541} |
| `processes` | {'int': 541} |
| `pssFallbackProcesses` | {'int': 541} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 1059} |
| `display` | {'int': 1062} |
| `kind` | {'str': 1062} |
| `processes` | {'int': 1062} |
| `pssKb` | {'int': 1062} |
| `rendererMaxPssKb` | {'int': 1062} |
| `renderers` | {'int': 1062} |
| `tabs` | {'int': 1061} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
