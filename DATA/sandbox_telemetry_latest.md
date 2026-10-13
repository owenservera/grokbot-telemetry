# sandbox_telemetry_parse — 2026-10-13 04:24:51 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=817941 lines=1929
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 1730 |
| `chrome_profile_sample` | 191 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 1730} |
| `chromeGpuPssKb` | {'int': 1730} |
| `chromeOtherPssKb` | {'int': 1730} |
| `chromeProcesses` | {'int': 1730} |
| `chromeProfiles` | {'int': 1730} |
| `chromeRendererMaxPssKb` | {'int': 1730} |
| `chromeRendererPssKb` | {'int': 1730} |
| `chromeRenderers` | {'int': 1730} |
| `chromeTabs` | {'int': 1730} |
| `chromeTabsProbedProfiles` | {'int': 1730} |
| `chromeUtilityPssKb` | {'int': 1730} |
| `desktopPssKb` | {'int': 1730} |
| `hostPssKb` | {'int': 1730} |
| `kind` | {'str': 1730} |
| `memAvailableKb` | {'int': 1730} |
| `memTotalKb` | {'int': 1730} |
| `otherPssKb` | {'int': 1730} |
| `processes` | {'int': 1730} |
| `pssFallbackProcesses` | {'int': 1730} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 190} |
| `display` | {'int': 191} |
| `kind` | {'str': 191} |
| `processes` | {'int': 191} |
| `pssKb` | {'int': 191} |
| `rendererMaxPssKb` | {'int': 191} |
| `renderers` | {'int': 191} |
| `tabs` | {'int': 191} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
