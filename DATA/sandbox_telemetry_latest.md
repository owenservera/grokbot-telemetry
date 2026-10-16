# sandbox_telemetry_parse — 2026-10-16 08:18:28 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=271613 lines=1015
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 664 |
| `memory_sample` | 342 |
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
| `chromeBrowserPssKb` | {'int': 342} |
| `chromeGpuPssKb` | {'int': 342} |
| `chromeOtherPssKb` | {'int': 342} |
| `chromeProcesses` | {'int': 342} |
| `chromeProfiles` | {'int': 342} |
| `chromeRendererMaxPssKb` | {'int': 342} |
| `chromeRendererPssKb` | {'int': 342} |
| `chromeRenderers` | {'int': 342} |
| `chromeTabs` | {'int': 342} |
| `chromeTabsProbedProfiles` | {'int': 342} |
| `chromeUtilityPssKb` | {'int': 342} |
| `desktopPssKb` | {'int': 342} |
| `hostPssKb` | {'int': 342} |
| `kind` | {'str': 342} |
| `memAvailableKb` | {'int': 342} |
| `memTotalKb` | {'int': 342} |
| `otherPssKb` | {'int': 342} |
| `processes` | {'int': 342} |
| `pssFallbackProcesses` | {'int': 342} |

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
| `cpuMillicores` | {'int': 661} |
| `display` | {'int': 664} |
| `kind` | {'str': 664} |
| `processes` | {'int': 664} |
| `pssKb` | {'int': 664} |
| `rendererMaxPssKb` | {'int': 664} |
| `renderers` | {'int': 664} |
| `tabs` | {'int': 663} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
