# sandbox_telemetry_parse — 2026-10-16 07:08:32 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=217048 lines=811
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 528 |
| `memory_sample` | 274 |
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
| `chromeBrowserPssKb` | {'int': 274} |
| `chromeGpuPssKb` | {'int': 274} |
| `chromeOtherPssKb` | {'int': 274} |
| `chromeProcesses` | {'int': 274} |
| `chromeProfiles` | {'int': 274} |
| `chromeRendererMaxPssKb` | {'int': 274} |
| `chromeRendererPssKb` | {'int': 274} |
| `chromeRenderers` | {'int': 274} |
| `chromeTabs` | {'int': 274} |
| `chromeTabsProbedProfiles` | {'int': 274} |
| `chromeUtilityPssKb` | {'int': 274} |
| `desktopPssKb` | {'int': 274} |
| `hostPssKb` | {'int': 274} |
| `kind` | {'str': 274} |
| `memAvailableKb` | {'int': 274} |
| `memTotalKb` | {'int': 274} |
| `otherPssKb` | {'int': 274} |
| `processes` | {'int': 274} |
| `pssFallbackProcesses` | {'int': 274} |

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
| `cpuMillicores` | {'int': 525} |
| `display` | {'int': 528} |
| `kind` | {'str': 528} |
| `processes` | {'int': 528} |
| `pssKb` | {'int': 528} |
| `rendererMaxPssKb` | {'int': 528} |
| `renderers` | {'int': 528} |
| `tabs` | {'int': 527} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
